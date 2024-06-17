.class public final Lcom/motorola/camera/background/service/jms/db/Transaction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final DEFAULT_TIMEOUT_MS:J


# instance fields
.field public final callerId:I

.field public final clientId:I

.field public final coProcId:I

.field public final comment:Ljava/lang/String;

.field public final iCallerId:I

.field public final iMsg:Ljava/lang/String;

.field public final iMsgType:I

.field public final iReturnCode:I

.field public id:J

.field public final jobNum:J

.field public final markForDelete:Z

.field public final msg:Ljava/lang/String;

.field public final msgType:I

.field public priority:I

.field public final progressInd:I

.field public retryCount:I

.field public final returnCode:I

.field public final scheduled:Z

.field public final sourceId:I

.field public final state:Ljava/lang/String;

.field public final targetId:I

.field public final taskNum:J

.field public final timeExpiration:J

.field public final ts:J

.field public useFifo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->DEFAULT_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    move v1, p3

    iput-boolean v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    move-wide v1, p4

    iput-wide v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->ts:J

    move v1, p6

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    move v1, p7

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    move v1, p8

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    move-wide v1, p9

    iput-wide v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    move/from16 v1, p13

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    move/from16 v1, p16

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    move/from16 v1, p17

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->callerId:I

    move/from16 v1, p18

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->msgType:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->msg:Ljava/lang/String;

    move/from16 v1, p20

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->returnCode:I

    move/from16 v1, p21

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iCallerId:I

    move/from16 v1, p22

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsgType:I

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsg:Ljava/lang/String;

    move/from16 v1, p24

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iReturnCode:I

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->state:Ljava/lang/String;

    move/from16 v1, p26

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->progressInd:I

    move-wide/from16 v1, p27

    iput-wide v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->timeExpiration:J

    move/from16 v1, p29

    iput-boolean v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->scheduled:Z

    move/from16 v1, p30

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->ts:J

    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->ts:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->callerId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->callerId:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->msgType:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->msgType:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->msg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->returnCode:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->returnCode:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iCallerId:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->iCallerId:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsgType:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsgType:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iReturnCode:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->iReturnCode:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->state:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->state:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->progressInd:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->progressInd:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->timeExpiration:J

    iget-wide v5, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->timeExpiration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->scheduled:Z

    iget-boolean v3, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->scheduled:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget p0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    iget p1, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    if-eqz v2, :cond_0

    move v2, v1

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->ts:J

    const/16 v4, 0x1f

    invoke-static {v2, v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    const/16 v3, 0x1f

    invoke-static {v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    invoke-static {v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    invoke-static {v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    invoke-static {v2, v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    invoke-static {v2, v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    const/16 v3, 0x1f

    invoke-static {v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    const/16 v4, 0x1f

    invoke-static {v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->callerId:I

    invoke-static {v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->msgType:I

    invoke-static {v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->msg:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->returnCode:I

    const/16 v4, 0x1f

    invoke-static {v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iCallerId:I

    invoke-static {v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsgType:I

    invoke-static {v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsg:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iReturnCode:I

    const/16 v4, 0x1f

    invoke-static {v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->state:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->progressInd:I

    const/16 v3, 0x1f

    invoke-static {v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->timeExpiration:J

    const/16 v4, 0x1f

    invoke-static {v2, v3, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(JII)I

    move-result v0

    iget-boolean v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->scheduled:Z

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    iget v2, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    iget-boolean v3, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    iget v4, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Transaction(id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", markForDelete="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ts="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->ts:J

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", clientId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sourceId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", targetId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", jobNum="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", taskNum="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", useFifo="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", comment="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", coProcId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callerId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->callerId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msgType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->msgType:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->msg:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", returnCode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->returnCode:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", iCallerId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iCallerId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", iMsgType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsgType:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", iMsg="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsg:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", iReturnCode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iReturnCode:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->state:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", progressInd="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->progressInd:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeExpiration="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->timeExpiration:J

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", scheduled="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/background/service/jms/db/Transaction;->scheduled:Z

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", retryCount="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
