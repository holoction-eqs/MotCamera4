.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $justify:I

.field public final synthetic $layout:Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

.field public final synthetic $needWrapLine:Z

.field public final synthetic $paddingEnd:I

.field public final synthetic $paddingStart:I

.field public final synthetic $recycler:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Landroidx/recyclerview/widget/RecyclerView;ZIILcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$recycler:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$needWrapLine:Z

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$paddingStart:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$paddingEnd:I

    iput-object p6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$layout:Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$justify:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->cancelLayoutChangeAnimation:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$needWrapLine:Z

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->addOrRemoveItemDecoration(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$paddingEnd:I

    const/4 v1, 0x0

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$paddingStart:I

    invoke-virtual {v2, v3, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$layout:Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$justify:I

    invoke-virtual {v0, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
