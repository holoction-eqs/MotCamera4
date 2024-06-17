.class public final Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCallback:Landroidx/activity/result/ActivityResultCallback;

.field public final mContract:L_COROUTINE/_BOUNDARY;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager$2;L_COROUTINE/_BOUNDARY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mCallback:Landroidx/activity/result/ActivityResultCallback;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mContract:L_COROUTINE/_BOUNDARY;

    return-void
.end method
