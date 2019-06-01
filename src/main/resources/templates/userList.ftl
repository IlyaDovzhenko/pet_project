<#import "parts/common.ftl" as common>

<@common.page>
    <h3>List of users</h3>
    <table class="table table-sm">
        <thead class="thead-dark">
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Role</th>
            <th scope="col">Functions</th>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td >${user.id}</td>
                <td >${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td>
                    <a href="/user/${user.id}">Edit</a>
                    <a class="ml-3" href="#">Delete</a>
                </td>
            </tr>
            <#else>
            No users!
        </#list>
        </tbody>
    </table>
</@common.page>