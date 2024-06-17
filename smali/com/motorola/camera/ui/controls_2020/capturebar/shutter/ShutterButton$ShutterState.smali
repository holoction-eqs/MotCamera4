.class public final enum Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_CAPTURING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_DISABLED:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum PHOTO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum TIMER:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_IDLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

.field public static final enum VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;


# instance fields
.field public final attr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v1, 0x0

    const v2, 0x7f0404a7

    const-string v3, "CINEMAGRAPH"

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v2, 0x1

    const v3, 0x7f0404af

    const-string v4, "PHOTO"

    invoke-direct {v1, v4, v2, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v3, 0x2

    const v4, 0x7f0404b1

    const-string v5, "PHOTO_DISABLED"

    invoke-direct {v2, v5, v3, v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_DISABLED:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v4, 0x3

    const v5, 0x7f0404b0

    const-string v6, "PHOTO_CAPTURING"

    invoke-direct {v3, v6, v4, v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_CAPTURING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v5, 0x4

    const v6, 0x7f0404b2

    const-string v7, "PHOTO_PROCESSING"

    invoke-direct {v4, v7, v5, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v6, 0x5

    const v7, 0x7f0404b3

    const-string v8, "TIMER"

    invoke-direct {v5, v8, v6, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->TIMER:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v7, 0x6

    const v8, 0x7f0404b4

    const-string v9, "VIDEO_IDLE"

    invoke-direct {v6, v9, v7, v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_IDLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/4 v8, 0x7

    const v9, 0x7f0404b5

    const-string v10, "VIDEO_PROCESSING"

    invoke-direct {v7, v10, v8, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_PROCESSING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    const/16 v9, 0x8

    const v10, 0x7f0404b6

    const-string v11, "VIDEO_RECORDING"

    invoke-direct {v8, v11, v9, v10}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    filled-new-array/range {v0 .. v8}, [Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->attr:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    return-object v0
.end method
