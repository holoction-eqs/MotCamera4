.class public final Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

.field public final mAutoHide:Z

.field public final mCenterRotation:Z

.field public final mContentDescription:Ljava/lang/String;

.field public final mDismissOnCaptureStarts:Z

.field public final mIgnoreVisibilityRules:Z

.field public final mImageResource:I

.field public final mLandscapeAlignCenter:Z

.field public final mText:Ljava/lang/String;

.field public final mTextDescriptionStr:Ljava/lang/String;

.field public final mTextResource:I

.field public final mToastDuration:I

.field public final mToastStyle:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;IIILcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;ZILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAutoHide:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextResource:I

    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mImageResource:I

    iput p5, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastDuration:I

    iput-object p6, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean p7, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mLandscapeAlignCenter:Z

    iput p8, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastStyle:I

    iput-object p9, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mTextDescriptionStr:Ljava/lang/String;

    iput-object p10, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mContentDescription:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mIgnoreVisibilityRules:Z

    iput-boolean p12, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mDismissOnCaptureStarts:Z

    iput-boolean p13, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mCenterRotation:Z

    return-void
.end method
