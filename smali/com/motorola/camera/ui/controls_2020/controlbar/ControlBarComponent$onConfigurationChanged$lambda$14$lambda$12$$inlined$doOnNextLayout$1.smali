.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$onConfigurationChanged$lambda$14$lambda$12$$inlined$doOnNextLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $adapter$inlined:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic $isLayoutManagerChange$inlined:Z

.field public final synthetic $recycler$inlined:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$onConfigurationChanged$lambda$14$lambda$12$$inlined$doOnNextLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$onConfigurationChanged$lambda$14$lambda$12$$inlined$doOnNextLayout$1;->$recycler$inlined:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$onConfigurationChanged$lambda$14$lambda$12$$inlined$doOnNextLayout$1;->$adapter$inlined:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$onConfigurationChanged$lambda$14$lambda$12$$inlined$doOnNextLayout$1;->$isLayoutManagerChange$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$onConfigurationChanged$lambda$14$lambda$12$$inlined$doOnNextLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$onConfigurationChanged$lambda$14$lambda$12$$inlined$doOnNextLayout$1;->$recycler$inlined:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p5, 0x3

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$onConfigurationChanged$lambda$14$lambda$12$$inlined$doOnNextLayout$1;->$adapter$inlined:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p6

    iget-boolean p7, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$onConfigurationChanged$lambda$14$lambda$12$$inlined$doOnNextLayout$1;->$isLayoutManagerChange$inlined:Z

    const/4 p8, 0x0

    invoke-virtual/range {p3 .. p8}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateLayoutChange$enumunboxing$(Landroidx/recyclerview/widget/RecyclerView;IIZLkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$onConfigurationChanged$lambda$14$lambda$12$$inlined$doOnNextLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string p2, "mParentView"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateSettingsGuideline(Landroid/view/View;Z)V

    return-void
.end method
