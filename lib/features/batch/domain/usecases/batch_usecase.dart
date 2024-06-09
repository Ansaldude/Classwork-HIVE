import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/core/failure/failure.dart';
import 'package:student_management_starter/features/batch/domain/entity/entity/batch_entity.dart';
import 'package:student_management_starter/features/batch/domain/entity/repository/batch_repository.dart';

final BatchUsecaseProvider = Provider<BatchUsecase>((ref) => BatchUsecase(
      batchRepository: ref.read(batchRepositoryProvider),
    ));

class BatchUsecase {
  final IBatchRepository batchRepository;

  BatchUsecase({required this.batchRepository});

  // For adding a batch
  Future<Either<Failure, bool>> addBatch(BatchEntity batch) {
    return batchRepository.addBatch(batch);
  }

  // For getting all batches
  Future<Either<Failure, List<BatchEntity>>> getAllBatches() {
    return batchRepository.getAllBatches();
  }
}
