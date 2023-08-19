//TODO: auditLogsProvider example

// import 'dart:async';

// import 'package:api/api.dart';
// import 'package:dio/dio.dart';
// import 'package:ivital_shared/providers/client_provider.dart';
// import 'package:riverpod/riverpod.dart';

// final auditLogsProvider = AutoDisposeAsyncNotifierProviderFamily<
//     AuditLogNotifier,
//     PaginatedAuditLog,
//     AuditLogTypeEnum>(AuditLogNotifier.new);

// class AuditLogNotifier extends AutoDisposeFamilyAsyncNotifier<PaginatedAuditLog,
//     AuditLogTypeEnum> {
//   @override
//   Future<PaginatedAuditLog> build(AuditLogTypeEnum arg) async {
//     late Response<PaginatedAuditLog> response;
//     switch (arg) {
//       case AuditLogTypeEnum.admin:
//         response = await ref.watch(auditlogApi).getAdmins();
//         break;
//       case AuditLogTypeEnum.guest:
//       case AuditLogTypeEnum.unknownDefaultOpenApi:
//         response = await ref.watch(auditlogApi).getGuests();
//         break;
//     }

//     return response.data!;
//   }

//   Future<void> getPage(int skip, int take) async {
//     state = const AsyncLoading<PaginatedAuditLog>().copyWithPrevious(state);

//     var asyncPagination = await ref.read(auditlogApi).getGuests(
//           skip: skip,
//           take: take,
//         );
//     state = AsyncData(asyncPagination.data!);
//   }
// }