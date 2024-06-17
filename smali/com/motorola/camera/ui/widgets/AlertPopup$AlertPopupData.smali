.class public Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundColor:I

.field public keepOrientation:Z

.field public message:I

.field public messageHTML:Ljava/lang/String;

.field public messageText:Ljava/lang/String;

.field public negativeButtonText:I

.field public negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

.field public negativeOnCancel:Z

.field public final positiveAllCaps:Z

.field public positiveButtonText:I

.field public positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

.field public title:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageText:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageHTML:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f0603e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->backgroundColor:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveAllCaps:Z

    return-void
.end method
