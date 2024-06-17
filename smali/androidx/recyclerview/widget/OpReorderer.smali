.class public final Landroidx/recyclerview/widget/OpReorderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public mCallback:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIIIZ)Landroidx/recyclerview/widget/OpReorderer;
    .locals 7

    const/4 v4, 0x0

    new-instance v6, Landroidx/recyclerview/widget/OpReorderer;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {v6, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Ljava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    return-object p0
.end method

.method public onChanged(Ljava/lang/Object;II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(Ljava/lang/Object;II)V

    return-void
.end method

.method public onInserted(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/GmsClient;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zac:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzx:Landroidx/recyclerview/widget/OpReorderer;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_2
    return-void
.end method
