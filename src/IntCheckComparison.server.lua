local CHECKS_PER_ITERATION = 100_000
local ITERATIONS = 1000

print(("Running (%d) iterations with (%d) checks per iteration"):format(ITERATIONS, CHECKS_PER_ITERATION))

do
	local TOTAL_CHECK_TIME = 0

	for iterationIndex = 1, ITERATIONS do
		local startTime = os.clock()

		for checkId = 1, CHECKS_PER_ITERATION do
			local isInteger = math.floor(checkId) == checkId
		end

		TOTAL_CHECK_TIME += os.clock() - startTime
	end

	print(("[math.floor method] Average time is (%.15f)"):format(TOTAL_CHECK_TIME / ITERATIONS))
end

do
	local TOTAL_CHECK_TIME = 0

	for iterationIndex = 1, ITERATIONS do
		local startTime = os.clock()

		for checkId = 1, CHECKS_PER_ITERATION do
			local isInteger = checkId % 1 == 0
		end

		TOTAL_CHECK_TIME += os.clock() - startTime
	end

	print(("[number %% 1 method] Average time is (%.15f)"):format(TOTAL_CHECK_TIME / ITERATIONS))
end
