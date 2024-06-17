.class public abstract Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

.field public final superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

.field public final superSlowMotionPlayer:Landroidx/media3/ui/PlayerView;

.field public final superSlowMotionPreviewBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final superSlowMotionPreviewTopGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final superSlowMotionProcessingBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final superSlowMotionProcessingCancelButton:Landroid/widget/Button;

.field public final superSlowMotionProcessingLabel:Landroid/widget/TextView;

.field public final superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

.field public final superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

.field public final superSlowMotionSaveButton:Landroid/widget/Button;

.field public final superSlowMotionSkipButton:Landroid/widget/Button;

.field public final superSlowMotionToast:Landroid/widget/TextView;

.field public final superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageButton;Landroidx/media3/ui/PlayerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 3

    move-object v0, p0

    const/16 v1, 0xe

    move-object v2, p1

    invoke-direct {p0, v1, p1}, Landroidx/databinding/ViewDataBinding;-><init>(ILandroid/view/View;)V

    move-object v1, p2

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    move-object v1, p3

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayer:Landroidx/media3/ui/PlayerView;

    move-object v1, p4

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPreviewBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p5

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPreviewTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p6

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    move-object v1, p7

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p8

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    move-object v1, p9

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    move-object v1, p10

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    move-object v1, p11

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    move-object v1, p12

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSkipButton:Landroid/widget/Button;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionToast:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    return-void
.end method


# virtual methods
.method public abstract setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
.end method
