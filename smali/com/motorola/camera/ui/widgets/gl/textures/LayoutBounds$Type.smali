.class public final enum Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

.field public static final enum FIXED:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

.field public static final enum WRAP_CONTENT:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->FIXED:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    const-string v2, "MATCH_VIEW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    const-string v3, "WRAP_CONTENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->WRAP_CONTENT:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    return-object v0
.end method
