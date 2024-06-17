.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$2:Ljava/util/List;

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ILjava/util/List;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$2:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$1:I

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$2:Ljava/util/List;

    const-string v3, "$newList"

    const-string v4, "$animationType"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    const-string v5, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v2, v1, v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ILjava/util/List;I)V

    iget-object p0, v0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_1
    invoke-static {p0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    new-instance v6, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;

    const/4 v0, 0x1

    invoke-direct {v6, v0, p0, v1, v3}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateLayoutChange$enumunboxing$(Landroidx/recyclerview/widget/RecyclerView;IIZLkotlin/jvm/functions/Function0;)V

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_2
    return-void

    :goto_0
    invoke-static {p0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateLayoutChange$enumunboxing$(Landroidx/recyclerview/widget/RecyclerView;IIZLkotlin/jvm/functions/Function0;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->disableAnimationsAfterUpdate:Z

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->disableAnimationsAfterUpdate:Z

    :cond_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
