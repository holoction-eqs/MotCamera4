.class public final Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;


# instance fields
.field public final synthetic $attrChange:Landroidx/databinding/InverseBindingListener;


# direct methods
.method public constructor <init>(Landroidx/databinding/InverseBindingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;->$attrChange:Landroidx/databinding/InverseBindingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMaximumRangeLimitReached()V
    .locals 0

    return-void
.end method

.method public final onMinimumRangeLimitReached()V
    .locals 0

    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch()V
    .locals 0

    return-void
.end method

.method public final onValueChanged([I)V
    .locals 1

    const-string v0, "newValue"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;->$attrChange:Landroidx/databinding/InverseBindingListener;

    invoke-interface {p0}, Landroidx/databinding/InverseBindingListener;->onChange()V

    return-void
.end method
