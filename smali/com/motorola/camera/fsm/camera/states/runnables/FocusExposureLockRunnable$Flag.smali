.class public final enum Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_PRECAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_PRETRIG_CHECK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_TIME_SENSITIVITY_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum EXPOSURE_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum FOCUS_FAILED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum FOCUS_SUCCESS:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum FOCUS_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

.field public static final enum STREAM_MONO_CAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v1, "FOCUS_UNLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v2, "FOCUS_LOCK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v3, "FOCUS_SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_SUCCESS:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v4, "FOCUS_FAILED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_FAILED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v5, "FOCUS_LOCKED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v6, "FOCUS_UNLOCKED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v7, "FOCUS_TIMEOUT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v8, "FOCUS_NOT_REQUIRED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v9, "EXPOSURE_PRETRIG_CHECK"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_CHECK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v10, "EXPOSURE_PRECAPTURE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRECAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v11, "EXPOSURE_READY"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v12, "EXPOSURE_PRETRIG_NOT_REQUIRED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v13, "EXPOSURE_TIME_SENSITIVITY_REQUIRED"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_TIME_SENSITIVITY_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v14, "EXPOSURE_UNLOCK"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v15, "EXPOSURE_LOCK"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v13, "EXPOSURE_LOCKED"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v13, "EXPOSURE_UNLOCKED"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v13, "EXPOSURE_LOCK_NOT_REQUIRED"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v13, "STREAM_MONO_CAPTURE"

    move-object/from16 v20, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->STREAM_MONO_CAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const-string v13, "EXPOSURE_LOCK_AFTER_EXPOSURE_READY"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v21

    move-object/from16 v14, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    filled-new-array/range {v0 .. v19}, [Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    return-object v0
.end method
