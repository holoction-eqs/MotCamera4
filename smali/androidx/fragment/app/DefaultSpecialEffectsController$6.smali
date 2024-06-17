.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$firstOut:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

.field public final synthetic val$isPop:Z

.field public final synthetic val$lastIn:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;ZLandroidx/collection/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastIn:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$firstOut:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$isPop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastIn:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$firstOut:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-boolean p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$isPop:Z

    invoke-static {v0, v1, p0}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
