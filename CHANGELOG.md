# Changelog
Following Semantic Versioning 2.

## next version:

## Version 0.1.0 (MINOR)
- Increase minimum Decidim version to v0.22
- Add some documentation regarding the invitation of admins.
- Fix do not require an area to exist to invite new admins.
- Introduce CI via GitHub Actions (update test suite)

## Version 0.0.16 (MINOR)
- A user can only belong to one single department. [\#30](https://github.com/gencat/decidim-department-admin/pull/30)
- When a department_admin is promoted to admin, she looses the role and the department. [\#30](https://github.com/gencat/decidim-department-admin/pull/30)

## Version 0.0.15 (PATCH)
- Fix admin user profile's detail view [\#28](https://github.com/gencat/decidim-department-admin/pull/28)

## Version 0.0.14 (MINOR)
- Role visualization in backoffice [\#26](https://github.com/gencat/decidim-department-admin/pull/26)

## Version 0.0.13 (PATCH)
- Fix space user roles permissions that were shadowed by department_admin [\#27](https://github.com/gencat/decidim-department-admin/pull/27)

## Version 0.0.12 (PATCH)
- FIX: Change method name: `organization_assemblies` to `collection`.
- Make gem compatible with Decidim >= v0.21.0.

## Version 0.0.11 (PATCH)
- Add :index permission for department_admins to add assembly administrators (assembly_user_role).

## Version 0.0.10 (PATCH)
- Take into account when attaching documents to Meetings or other resources w/o area.

## Version 0.0.9 (PATCH)
- Add permission for department_admins to add assembly administrators (assembly_user_role).

## Version 0.0.8 (MINOR)
- Add permission for department_admins to export components.

## Version 0.0.7 (MINOR)
- Fix Newsletters query. In admin newsletter list, filter newsletters only with same area/department than current user.

## Version 0.0.6 (MINOR)
- Add a search field in admins index.

## Version 0.0.5 (PATCH)
- [REFACTOR] Use new `Decidim.user_roles` config_accessor for `Decidim::User` roles.

## Version 0.0.4 (MINOR)
- Add an area/department column in admins index.

## Version 0.0.3 (MINOR)
- REFACTOR: Hack Decidim::User::ROLES.freeze to be able to not overwrite Decidim::User::ROLES, which causes many dependency loading order problems, instead it adds department_admin role to the list.
- FIX: Add pending permissions so that department_admin can invite process admins.
- FIX: Add pending permissions so that department_admin can manage assembly members.

## Version 0.0.2 (MINOR)
- Remove component declaration for department_admin. (#10)

## Version 0.0.1 (MAJOR)
- Initial version.
