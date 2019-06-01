<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login_form>

<@common.page>
    <h3>Add new user.</h3>
    ${message?ifExists}
    <@login_form.login "/registration" />
</@common.page>