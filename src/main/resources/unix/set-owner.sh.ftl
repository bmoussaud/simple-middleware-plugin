<#assign options="" />
<#if deployed.recursed>
	<#assign options="-R ${options}" />
</#if>

echo chown ${options} ${deployed.owner} ${deployed.file}
chown ${options} ${deployed.owner} ${deployed.file}
