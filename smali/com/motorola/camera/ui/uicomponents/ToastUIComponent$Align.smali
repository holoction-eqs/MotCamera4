.class public final enum Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

.field public static final enum BOTTOM:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

.field public static final enum CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

.field public static final enum TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const-string v3, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->BOTTOM:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->$VALUES:[Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->$VALUES:[Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    return-object v0
.end method
