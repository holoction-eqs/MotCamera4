.class public final enum Lcom/motorola/camera/background/common/msg/MsgType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum CANCEL_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

.field public static final enum JOB_RECEIVED_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_COMPLETE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_COMPLETE_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_RETRY:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum UNKNOWN:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final map:Ljava/util/LinkedHashMap;


# instance fields
.field public final msgCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v1, "UNKNOWN"

    const/4 v15, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v15, v2}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->UNKNOWN:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v2, "PROCESS_JOB"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v15}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v4, "PROCESS_JOB_COMPLETE"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v3, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v4, "CANCEL_JOB"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/background/common/msg/MsgType;->CANCEL_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v4, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v5, "PROGRESS_INDICATOR"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v6, "CANCEL_ALL_JOBS"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v7, "PROCESS_JOB_ACK"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v7, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v8, "JOB_RECEIVED_ACK"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/background/common/msg/MsgType;->JOB_RECEIVED_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v8, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v9, "JOB_DATA_READ_COMPLETE"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v10, "PROCESS_JOB_RETRY"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v12, v11}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_RETRY:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v10, Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v11, 0x64

    const-string v12, "PROCESS_JOB_IMAGE"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v11, Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v12, 0x65

    const-string v13, "PROCESS_JOB_COMPLETE_IMAGE"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v12, Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v13, 0x66

    const-string v14, "CANCEL_JOB_IMAGE"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v14, 0x3e8

    const-string v15, "PROCESS_MSG"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v14, Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v12, 0x3e9

    const-string v15, "PROCESS_CTL_MSG"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lcom/motorola/camera/background/common/msg/MsgType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->$VALUES:[Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    invoke-static {}, Lcom/motorola/camera/background/common/msg/MsgType;->values()[Lcom/motorola/camera/background/common/msg/MsgType;

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v1, v0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v1, :cond_1

    aget-object v3, v0, v15

    iget v4, v3, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/motorola/camera/background/common/msg/MsgType;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/msg/MsgType;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/msg/MsgType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/msg/MsgType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->$VALUES:[Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/msg/MsgType;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
