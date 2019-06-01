<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group col-md-4 mb-3">
            <label>User Name: </label>
            <input class="form-control" type="text" name="username" placeholder="Enter username" />
        </div>
        <div class="form-group col-md-4 mb-3">
            <label>Password: </label>
            <input class="form-control" type="password" name="password" placeholder="Enter password" />
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div class="col-md-4 mb-3">
            <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>
            <#if !isRegisterForm><a href="/registration">Add new user.</a></#if>
        </div>
    </form>
</#macro>

<#macro logout_button path>
    <form action="${path}" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input class="btn btn-primary ml-2" type="submit" value="Sign out" />
    </form>
</#macro>
<#macro login_button path>
    <form action="${path}" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input class="btn btn-primary ml-2" type="submit" value="Sign in" />
    </form>
</#macro>
<#macro registration_button path>
    <form action="${path}" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input class="btn btn-primary ml-2" type="submit" value="Sign up" />
    </form>
</#macro>