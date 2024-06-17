.class public final Landroidx/fragment/app/Fragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$controller:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/Fragment$3;->$r8$classId:I

    iput-object p2, p0, Landroidx/fragment/app/Fragment$3;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/Fragment$3;->val$controller:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/Fragment$3;->$r8$classId:I

    iget-object p0, p0, Landroidx/fragment/app/Fragment$3;->val$controller:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/fragment/app/SpecialEffectsController;

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    return-void

    :goto_0
    check-cast p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->completeSpecialEffect()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
