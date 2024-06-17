.class public final enum Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

.field public static final enum CELL_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

.field public static final enum DONE_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

.field public static final enum LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

.field public static final enum LIST_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

.field public static final enum MENU_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

.field public static final enum SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    const-string v1, "SLIDER_TOUCH_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    const-string v2, "MENU_TOUCH_DOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->MENU_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    const-string v3, "DONE_TOUCH_DOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->DONE_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    const-string v4, "LIST_MOVING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    const-string v5, "LIST_LONG_PRESS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    const-string v6, "CELL_MOVING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->CELL_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    const-string v7, "CELL_OUT_SLIDER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v6}, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    return-object v0
.end method
