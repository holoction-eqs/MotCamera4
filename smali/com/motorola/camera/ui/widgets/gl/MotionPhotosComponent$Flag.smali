.class public final enum Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

.field public static final enum CHECKING_TIMESTAMP:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

.field public static final enum LOADED:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

.field public static final enum PROCESS_FRAME:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    const-string v2, "PROCESS_FRAME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->PROCESS_FRAME:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    const-string v3, "CHECKING_TIMESTAMP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->CHECKING_TIMESTAMP:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    return-object v0
.end method
