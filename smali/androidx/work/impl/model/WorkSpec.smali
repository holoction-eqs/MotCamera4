.class public final Landroidx/work/impl/model/WorkSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WORK_INFO_MAPPER:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;


# instance fields
.field public backoffDelayDuration:J

.field public backoffPolicy:I

.field public constraints:Landroidx/work/Constraints;

.field public expedited:Z

.field public flexDuration:J

.field public final generation:I

.field public final id:Ljava/lang/String;

.field public initialDelay:J

.field public input:Landroidx/work/Data;

.field public inputMergerClassName:Ljava/lang/String;

.field public intervalDuration:J

.field public lastEnqueueTime:J

.field public minimumRetentionDuration:J

.field public outOfQuotaPolicy:I

.field public output:Landroidx/work/Data;

.field public final periodCount:I

.field public runAttemptCount:I

.field public scheduleRequestedAt:J

.field public state:Landroidx/work/WorkInfo$State;

.field public final workerClassName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkSpec"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WorkSpec\")"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIII)V
    .locals 10

    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p13

    move/from16 v7, p15

    move/from16 v8, p25

    const-string v9, "id"

    invoke-static {p1, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "state"

    invoke-static {p2, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "workerClassName"

    invoke-static {p3, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "input"

    invoke-static {p5, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "output"

    invoke-static {v5, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "constraints"

    invoke-static {v6, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "backoffPolicy"

    invoke-static {v7, v9}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    const-string v9, "outOfQuotaPolicy"

    invoke-static {v8, v9}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iput-object v2, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iput-object v3, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    iput-object v4, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    iput-object v5, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move-wide/from16 v1, p7

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move-wide/from16 v1, p9

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move-wide/from16 v1, p11

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iput-object v6, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    move/from16 v1, p14

    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iput v7, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, p24

    iput-boolean v1, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    iput v8, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    move/from16 v1, p26

    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    move/from16 v1, p27

    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->generation:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIIII)V
    .locals 30

    .line 2
    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const-string v2, "EMPTY"

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    const-wide/16 v13, 0x0

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    move-object v15, v1

    goto :goto_7

    :cond_7
    move-object/from16 v15, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    move/from16 v16, v5

    goto :goto_8

    :cond_8
    move/from16 v16, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    const/16 v17, 0x1

    if-eqz v1, :cond_9

    move/from16 v1, v17

    goto :goto_9

    :cond_9
    move/from16 v1, p15

    :goto_9
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x7530

    move-wide/from16 v18, v2

    goto :goto_a

    :cond_a
    move-wide/from16 v18, p16

    :goto_a
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_b

    const-wide/16 v20, 0x0

    goto :goto_b

    :cond_b
    move-wide/from16 v20, p18

    :goto_b
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_c

    const-wide/16 v22, 0x0

    goto :goto_c

    :cond_c
    move-wide/from16 v22, p20

    :goto_c
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_d

    const-wide/16 v2, -0x1

    move-wide/from16 v24, v2

    goto :goto_d

    :cond_d
    move-wide/from16 v24, p22

    :goto_d
    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_e

    move/from16 v26, v5

    goto :goto_e

    :cond_e
    move/from16 v26, p24

    :goto_e
    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    if-eqz v2, :cond_f

    move/from16 v27, v17

    goto :goto_f

    :cond_f
    move/from16 v27, p25

    :goto_f
    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_10

    move/from16 v28, v5

    goto :goto_10

    :cond_10
    move/from16 v28, p26

    :goto_10
    const/16 v29, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v17, v1

    invoke-direct/range {v2 .. v29}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 29

    .line 3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const-string v2, "id"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "workerClassName_"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const v27, 0xffffa

    const/16 v28, 0x0

    const/4 v15, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v0 .. v28}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIIII)V

    return-void
.end method

.method public static copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/Data;IJII)Landroidx/work/impl/model/WorkSpec;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v2, v1, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v3

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p4

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move-object v9, v2

    goto :goto_5

    :cond_5
    move-object v9, v3

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_6

    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    goto :goto_6

    :cond_6
    const-wide/16 v12, 0x0

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-wide v14, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    goto :goto_7

    :cond_7
    const-wide/16 v14, 0x0

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move-wide/from16 v16, v10

    goto :goto_8

    :cond_8
    const-wide/16 v16, 0x0

    :goto_8
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    goto :goto_9

    :cond_9
    move-object v2, v3

    :goto_9
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_a

    iget v3, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v18, v3

    goto :goto_a

    :cond_a
    move/from16 v18, p5

    :goto_a
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    iget v3, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    move v11, v3

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    :goto_b
    and-int/lit16 v3, v1, 0x1000

    move/from16 v19, v11

    if-eqz v3, :cond_c

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 v20, v10

    goto :goto_c

    :cond_c
    const-wide/16 v20, 0x0

    :goto_c
    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_d

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 v22, v10

    goto :goto_d

    :cond_d
    move-wide/from16 v22, p6

    :goto_d
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_e

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-wide/from16 v24, v10

    goto :goto_e

    :cond_e
    const-wide/16 v24, 0x0

    :goto_e
    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_f

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move-wide/from16 v26, v10

    goto :goto_f

    :cond_f
    const-wide/16 v26, 0x0

    :goto_f
    const/high16 v3, 0x10000

    and-int/2addr v3, v1

    if-eqz v3, :cond_10

    iget-boolean v3, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v28, v3

    goto :goto_10

    :cond_10
    const/16 v28, 0x0

    :goto_10
    const/high16 v3, 0x20000

    and-int/2addr v3, v1

    if-eqz v3, :cond_11

    iget v3, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    move v10, v3

    goto :goto_11

    :cond_11
    const/4 v10, 0x0

    :goto_11
    const/high16 v3, 0x40000

    and-int/2addr v3, v1

    if-eqz v3, :cond_12

    iget v3, v0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    move/from16 v29, v3

    goto :goto_12

    :cond_12
    const/16 v29, 0x0

    :goto_12
    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    iget v1, v0, Landroidx/work/impl/model/WorkSpec;->generation:I

    move/from16 v30, v1

    goto :goto_13

    :cond_13
    move/from16 v30, p8

    :goto_13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "id"

    invoke-static {v4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {v5, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerClassName"

    invoke-static {v6, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v8, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {v9, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffPolicy"

    move/from16 v1, v19

    invoke-static {v1, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    const-string v0, "outOfQuotaPolicy"

    invoke-static {v10, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    move-object v3, v0

    move/from16 v31, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-object/from16 v16, v2

    move/from16 v17, v18

    move/from16 v18, v1

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v26

    move/from16 v27, v28

    move/from16 v28, v31

    invoke-direct/range {v3 .. v30}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIII)V

    return-object v0
.end method


# virtual methods
.method public final calculateNextRunTime()J
    .locals 11

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move v3, v2

    :cond_1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    if-eqz v3, :cond_2

    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    goto :goto_1

    :cond_2
    long-to-float v0, v0

    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    :goto_1
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    const-wide/32 v4, 0x112a880

    cmp-long p0, v0, v4

    if-lez p0, :cond_b

    move-wide v0, v4

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    iget v6, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    if-nez v6, :cond_4

    iget-wide v7, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    add-long/2addr v0, v7

    :cond_4
    iget-wide v7, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v9, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long p0, v7, v9

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    if-eqz v2, :cond_7

    if-nez v6, :cond_6

    const/4 p0, -0x1

    int-to-long v2, p0

    mul-long v4, v2, v7

    :cond_6
    add-long/2addr v0, v9

    goto :goto_3

    :cond_7
    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    move-wide v4, v9

    :goto_3
    add-long v2, v0, v4

    goto :goto_5

    :cond_9
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_a
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    :cond_b
    :goto_4
    add-long/2addr v2, v0

    :goto_5
    return-wide v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/work/impl/model/WorkSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/work/impl/model/WorkSpec;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    iget-boolean v3, p1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    iget p1, p1, Landroidx/work/impl/model/WorkSpec;->generation:I

    if-eq p0, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final hasConstraints()Z
    .locals 1

    sget-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-virtual {v0}, Landroidx/work/Data;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-static {v1, v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-static {v1, v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v1}, Landroidx/work/Constraints;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    const/16 v0, 0x1f

    invoke-static {v2, v3, v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-static {v1, v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-static {v1, v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-boolean v1, p0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isPeriodic()Z
    .locals 4

    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{WorkSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
