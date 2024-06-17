.class public final enum Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum BOTTOM_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum BOTTOM_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum LEFT_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum LEFT_CENTER_RTL:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum TOP_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

.field public static final enum TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;


# instance fields
.field public final mRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const v3, 0x7f080368

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v2, "TOP_CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v4, "TOP_RIGHT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v4, "BOTTOM_LEFT"

    const/4 v5, 0x3

    const v6, 0x7f08036b

    invoke-direct {v3, v4, v5, v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v5, "BOTTOM_CENTER"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const-string v7, "BOTTOM_RIGHT"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const/4 v7, 0x6

    const v8, 0x7f08036a

    const-string v9, "LEFT_CENTER"

    invoke-direct {v6, v9, v7, v8}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->LEFT_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const/4 v8, 0x7

    const v9, 0x7f080369

    const-string v10, "LEFT_CENTER_RTL"

    invoke-direct {v7, v10, v8, v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->LEFT_CENTER_RTL:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    filled-new-array/range {v0 .. v7}, [Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const p1, 0x7f08036b

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->mRes:I

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->mRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    return-object v0
.end method
