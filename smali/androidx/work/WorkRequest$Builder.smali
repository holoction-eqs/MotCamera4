.class public abstract Landroidx/work/WorkRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public id:Ljava/util/UUID;

.field public final tags:Ljava/util/LinkedHashSet;

.field public workSpec:Landroidx/work/impl/model/WorkSpec;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/WorkRequest$Builder;->id:Ljava/util/UUID;

    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    iget-object v1, p0, Landroidx/work/WorkRequest$Builder;->id:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id.toString()"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection(Ljava/util/HashSet;[Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/work/WorkRequest$Builder;->tags:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/work/OneTimeWorkRequest;
    .locals 44

    move-object/from16 v0, p0

    move-object v1, v0

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    new-instance v2, Landroidx/work/OneTimeWorkRequest;

    invoke-direct {v2, v1}, Landroidx/work/OneTimeWorkRequest;-><init>(Landroidx/work/OneTimeWorkRequest$Builder;)V

    iget-object v1, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget-object v3, v1, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, v1, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Landroidx/work/Constraints;->requiresCharging:Z

    if-nez v3, :cond_1

    iget-boolean v1, v1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    iget-object v3, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-boolean v6, v3, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-eqz v6, :cond_5

    xor-int/2addr v1, v4

    if-eqz v1, :cond_4

    iget-wide v6, v3, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs cannot be delayed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v3, "randomUUID()"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/work/WorkRequest$Builder;->id:Ljava/util/UUID;

    new-instance v3, Landroidx/work/impl/model/WorkSpec;

    move-object v4, v3

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    const-string v6, "id.toString()"

    invoke-static {v1, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    const-string v15, "other"

    invoke-static {v1, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    iget-object v6, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iget-object v8, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    new-instance v10, Landroidx/work/Data;

    move-object v9, v10

    iget-object v11, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-direct {v10, v11}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    new-instance v11, Landroidx/work/Data;

    move-object v10, v11

    iget-object v12, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-direct {v11, v12}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    iget-wide v11, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v13, v1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move-object v0, v15

    move-wide v15, v2

    new-instance v18, Landroidx/work/Constraints;

    move-object/from16 v17, v18

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v2, Landroidx/work/Constraints;->requiresCharging:Z

    iget-boolean v3, v2, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    move-object/from16 v35, v4

    iget v4, v2, Landroidx/work/Constraints;->requiredNetworkType:I

    move-object/from16 v36, v5

    iget-boolean v5, v2, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    move-object/from16 v37, v6

    iget-boolean v6, v2, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    move-object/from16 v38, v7

    iget-object v7, v2, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    move-object/from16 v39, v8

    move-object/from16 v40, v9

    iget-wide v8, v2, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    move-object/from16 v41, v10

    move-wide/from16 v42, v11

    iget-wide v10, v2, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    move/from16 v19, v4

    move/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-object/from16 v28, v7

    invoke-direct/range {v18 .. v28}, Landroidx/work/Constraints;-><init>(IZZZZJJLjava/util/Set;)V

    iget v0, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v18, v0

    iget v0, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    move/from16 v19, v0

    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-wide/from16 v24, v2

    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move-wide/from16 v26, v2

    iget-boolean v0, v1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v28, v0

    iget v0, v1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    move/from16 v29, v0

    iget v0, v1, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    move/from16 v30, v0

    const/high16 v31, 0x80000

    const/16 v32, 0x0

    move-object/from16 v4, v35

    move-object/from16 v5, v36

    move-object/from16 v6, v37

    move-object/from16 v7, v38

    move-object/from16 v8, v39

    move-object/from16 v9, v40

    move-object/from16 v10, v41

    move-wide/from16 v11, v42

    invoke-direct/range {v4 .. v32}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    iput-object v1, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    return-object v33
.end method
