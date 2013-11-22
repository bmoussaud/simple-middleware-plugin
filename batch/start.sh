echo "Start ${container.name} running on  ${container.host.name}"

<#assign envVars=container.envVars />
<#list envVars?keys as envVar>
${envVar}="${envVars[envVar]}"
export ${envVar}
</#list>

if [ ! -f ${container.startCommand} ]
then
    echo "the startCommand [${container.startCommand}] does not exist"
<#if container.failIfCommandNotExist>
	exit 1
</#if>
else
	${container.startCommand}
fi

