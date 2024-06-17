.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$9$lambda$8$$inlined$doOnNextLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $isLayoutManagerChange$inlined:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$9$lambda$8$$inlined$doOnNextLayout$1;->$isLayoutManagerChange$inlined:Z

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$9$lambda$8$$inlined$doOnNextLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$9$lambda$8$$inlined$doOnNextLayout$1;->$isLayoutManagerChange$inlined:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$9$lambda$8$$inlined$doOnNextLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateUiForSplitScreen()V

    :cond_0
    return-void
.end method
