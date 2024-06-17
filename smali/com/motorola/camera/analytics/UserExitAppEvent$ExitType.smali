.class public final enum Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum CAMERA_SETTINGS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum CINEMAGRAPH:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum COLLAGE_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum DND_PERMISSION_REQUEST:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum DOCUMENT_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum GALLERY:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum GOOGLE_LENS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum MISC:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum MOTO_ACTIONS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum MOTO_FEEDBACK:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum OBJECT_DETECTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum PHOTOS_STABILIZE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum POWER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum SETTINGS_LOCATION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum SUPER_SLOW_MOTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum TIMEDOUT:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum VIDEO_PLAYER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

.field public static final enum YOUTUBE_LIVE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;


# instance fields
.field public final mCheckinName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v0, v1

    const-string v2, "MISC"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v2}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MISC:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v2, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v1, v2

    const-string v3, "BACK"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v2, v3

    const-string v4, "GALRY"

    const-string v5, "GALLERY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GALLERY:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v3, v4

    const-string v5, "POWER"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v5}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->POWER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v4, v5

    const-string v6, "TMOUT"

    const-string v7, "TIMEDOUT"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->TIMEDOUT:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v6, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v5, v6

    const-string v7, "UREQ"

    const-string v8, "USER_REQ"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v6, v7

    const-string v8, "ERR"

    const-string v9, "ERROR"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v8, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v7, v8

    const-string v9, "SMRTCAM"

    const-string v10, "SMART_CAM"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v8, v9

    const-string v10, "YTBLIVE"

    const-string v11, "YOUTUBE_LIVE"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->YOUTUBE_LIVE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v10, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v9, v10

    const-string v11, "VIDPL"

    const-string v12, "VIDEO_PLAYER"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->VIDEO_PLAYER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v11, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v10, v11

    const-string v12, "SETSLOC"

    const-string v13, "SETTINGS_LOCATION"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SETTINGS_LOCATION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v12, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v11, v12

    const-string v13, "MOTOACTS"

    const-string v14, "MOTO_ACTIONS"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v13}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_ACTIONS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v13, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v12, v13

    const-string v14, "LENS"

    const-string v15, "GOOGLE_LENS"

    move-object/from16 v22, v0

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v14}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GOOGLE_LENS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v13, v0

    const-string v14, "CINEMAGRAPH"

    const/16 v15, 0xd

    invoke-direct {v0, v14, v15, v14}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->CINEMAGRAPH:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v14, v0

    const-string v15, "OBJDET"

    move-object/from16 v23, v1

    const-string v1, "OBJECT_DETECTION"

    move-object/from16 v24, v2

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v15}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->OBJECT_DETECTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object v15, v0

    const-string v1, "PHSTB"

    const-string v2, "PHOTOS_STABILIZE"

    move-object/from16 v25, v3

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->PHOTOS_STABILIZE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object/from16 v16, v0

    const-string v1, "DNDPR"

    const-string v2, "DND_PERMISSION_REQUEST"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DND_PERMISSION_REQUEST:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object/from16 v17, v0

    const-string v1, "MOTFD"

    const-string v2, "MOTO_FEEDBACK"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_FEEDBACK:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object/from16 v18, v0

    const-string v1, "SUPERSLOWMO"

    const-string v2, "SUPER_SLOW_MOTION"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SUPER_SLOW_MOTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object/from16 v19, v0

    const-string v1, "COLLAGE"

    const-string v2, "COLLAGE_EDITOR"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->COLLAGE_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object/from16 v20, v0

    const-string v1, "DOCEDIT"

    const-string v2, "DOCUMENT_EDITOR"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DOCUMENT_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object/from16 v21, v0

    const-string v1, "SETTINGS"

    const-string v2, "CAMERA_SETTINGS"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->CAMERA_SETTINGS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    filled-new-array/range {v0 .. v21}, [Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->$VALUES:[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->mCheckinName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
    .locals 1

    const-class v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->$VALUES:[Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {v0}, [Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->mCheckinName:Ljava/lang/String;

    return-object p0
.end method
