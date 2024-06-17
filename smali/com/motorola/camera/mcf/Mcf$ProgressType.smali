.class public final enum Lcom/motorola/camera/mcf/Mcf$ProgressType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum ALGORITHM_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum ALGORITHM_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum FRAME_COLLECTION_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum INVALID:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum REPROCESS_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum REPROCESS_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum REPROCESS_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SEQ_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SEQ_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_BG_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_BG_TRANSFER_APP:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SWJPEG_REPROC_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SWJPEG_REPROC_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->INVALID:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v2, "SEQ_STARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v3, "SEQ_STOPPED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v4, "STATE_MACHINE_STARTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v5, "STATE_MACHINE_STOPPED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v5, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v6, "FRAME_COLLECTION_STARTED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v7, "FRAME_COLLECTION_STOPPED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v8, "REPROCESS_STARTED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v8, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v9, "REPROCESS_STOPPED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v10, "ALGORITHM_STARTED"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v10, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v11, "ALGORITHM_STOPPED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v11, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v12, "STATE_MACHINE_FAILURE"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v12, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v13, "FRAME_COLLECTION_FAILURE"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v13, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v14, "REPROCESS_FAILURE"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v14, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v15, "ALGORITHM_FAILURE"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v15, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v13, "CANCELLED"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v14, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v13, "STATE_MACHINE_BG_STARTED"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_BG_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v15, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v13, "STATE_MACHINE_BG_TRANSFER_APP"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_BG_TRANSFER_APP:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v14, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v13, "SWJPEG_REPROC_STARTED"

    move-object/from16 v20, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SWJPEG_REPROC_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v15, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v13, "SWJPEG_REPROC_FAILURE"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SWJPEG_REPROC_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v21

    move-object/from16 v14, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    filled-new-array/range {v0 .. v19}, [Lcom/motorola/camera/mcf/Mcf$ProgressType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$ProgressType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ProgressType;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/Mcf$ProgressType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/Mcf$ProgressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/Mcf$ProgressType;

    return-object v0
.end method
