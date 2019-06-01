<#macro login path>
    <form action="${path}" method="post">
        <div class="form-group col-md-4 mb-3">
            <label>User Name: </label>
            <input class="form-control" type="text" name="username" />
        </div>
        <div class="form-group col-md-4 mb-3">
            <label>Password: </label>
            <input class="form-control" type="password" name="password" />
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div><input type="submit" value="Sign In" /></div>
    </form>
</#macro>

<#macro logout path>
    <form action="${path}" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input type="submit" value="Sign Out" />
    </form>
</#macro>