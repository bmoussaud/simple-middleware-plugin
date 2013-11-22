echo "Stop ${container.name} running on  ${container.host.name}"

<#assign envVars=container.envVars />
<#list envVars?keys as envVar>
${envVar}="${envVars[envVar]}"
export ${envVar}
</#list>

if [ ! -f ${container.stopCommand} ]
then
    echo "the stopCommand [${container.stopCommand}] does not exist"
<#if container.failIfCommandNotExist>
	exit 1
</#if>
else
	${container.stopCommand}
fi

