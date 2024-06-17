.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $animationTimeSlice:J

.field public final synthetic $recycler:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic $updateControlBarBlock:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$recycler:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$updateControlBarBlock:Lkotlin/jvm/functions/Function0;

    iput-wide p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$animationTimeSlice:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$updateControlBarBlock:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v1, v0}, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    iget-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$animationTimeSlice:J

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
