.class public final enum Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

.field public static final enum CAMERA_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

.field public static final enum CAMERA_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

.field public static final enum CAMERA_PREVIEW_ST:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

.field public static final enum HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

.field public static final enum HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    const-string v1, "CAMERA_PERSPECTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    const-string v2, "CAMERA_ORTHO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    const-string v3, "HUD_PERSPECTIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    const-string v4, "HUD_ORTHO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    const-string v5, "CAMERA_PREVIEW_ST"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PREVIEW_ST:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    return-object v0
.end method
