.class public final enum Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum SESSION_CREATED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum SURFACE_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

.field public static final enum WAIT_LOADING_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v1, "WAIT_LOADING_FLG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->WAIT_LOADING_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v2, "SESSION_CREATED_FLG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SESSION_CREATED_FLG:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v3, "SURFACE_READY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v4, "CONTEXT_VALID"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->CONTEXT_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v5, "SURFACE_VALID"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v6, "FIRST_FRAME"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->FIRST_FRAME:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v7, "LOAD_MAIN_UI_COMPONENT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_MAIN_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const-string v8, "LOAD_DEFERRED_COMPONENT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->LOAD_DEFERRED_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    filled-new-array/range {v0 .. v7}, [Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    return-object v0
.end method
