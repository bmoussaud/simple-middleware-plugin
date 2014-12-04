<#assign options="" />
<#if deployed.recursed>
	<#assign options="-R ${options}" />
</#if>
<#if deployed.verbose>
	<#assign options="-v ${options}" />
</#if>

echo chmod ${options} ${deployed.mode} ${deployed.file}
chmod ${options} ${deployed.mode} ${deployed.file}
