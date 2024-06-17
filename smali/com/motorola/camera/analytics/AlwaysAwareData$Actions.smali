.class public final enum Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum ADD_CONTACT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum ADD_EVENT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum BACK_BUTTON:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum CALL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum CAMERA_TIMEOUT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum COPY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum EMAIL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum MAP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum MATTER:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum MONOPOLY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum MOTORDP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum SEARCH:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum SHARE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum SMS:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum TOUCH_OUTSIDE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum UNKNOWN:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum WEB:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

.field public static final enum WIFI:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;


# instance fields
.field public final checkInData:I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v1, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v0, v1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->UNKNOWN:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v1, v2

    const-string v3, "ADD_CONTACT"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_CONTACT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v3, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v2, v3

    const-string v4, "COPY"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->COPY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v3, v4

    const-string v5, "CALL"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->CALL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v4, v5

    const-string v6, "EMAIL"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->EMAIL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v6, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v5, v6

    const-string v7, "ADD_EVENT"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_EVENT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v7, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v6, v7

    const-string v8, "MAP"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MAP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v8, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v7, v8

    const-string v9, "SHARE"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SHARE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v9, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v8, v9

    const-string v10, "SMS"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SMS:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v10, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v9, v10

    const-string v11, "WEB"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WEB:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v11, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v10, v11

    const-string v12, "WIFI"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WIFI:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v11, v12

    const-string v13, "SEARCH"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SEARCH:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v13, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v12, v13

    const-string v14, "SWIPE_TO_DISMISS"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v13, v14

    const/16 v15, 0x15

    move-object/from16 v21, v0

    const-string v0, "RETRY"

    move-object/from16 v22, v1

    const/16 v1, 0xd

    invoke-direct {v14, v0, v1, v15}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v14, v0

    const/16 v1, 0x16

    const-string v15, "CANCEL"

    move-object/from16 v23, v2

    const/16 v2, 0xe

    invoke-direct {v0, v15, v2, v1}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v15, v0

    const/16 v1, 0x19

    const-string v2, "BACK_BUTTON"

    move-object/from16 v24, v3

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->BACK_BUTTON:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object/from16 v16, v0

    const/16 v1, 0x1a

    const-string v2, "TOUCH_OUTSIDE"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->TOUCH_OUTSIDE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object/from16 v17, v0

    const/16 v1, 0x1b

    const-string v2, "CAMERA_TIMEOUT"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->CAMERA_TIMEOUT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object/from16 v18, v0

    const/16 v1, 0x1c

    const-string v2, "MOTORDP"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MOTORDP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object/from16 v19, v0

    const/16 v1, 0x1d

    const-string v2, "MONOPOLY"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MONOPOLY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object/from16 v20, v0

    const/16 v1, 0x1e

    const-string v2, "MATTER"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MATTER:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    filled-new-array/range {v0 .. v20}, [Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->$VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;
    .locals 1

    const-class v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;
    .locals 1

    sget-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->$VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    invoke-virtual {v0}, [Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    return-object v0
.end method
