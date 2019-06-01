<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login_form>

<@common.page>
    <h3>Login, please.</h3>
    <@login_form.login "/login" false/>
</@common.page>