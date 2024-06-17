.class public final Lcom/google/android/gms/common/internal/zzu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;

.field public zzc:I

.field public zzd:Z


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/zzu;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/zzu;[Lcom/google/android/gms/common/Feature;ZI)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzu;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    iput p4, p0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzu;->$r8$classId:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/work/Worker$1;

    const/16 v0, 0x13

    invoke-direct {p1, p0, v0}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, Lcom/google/android/gms/common/internal/zzu;->$r8$classId:I

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzu;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/internal/zzu;->$r8$classId:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v0, 0x13

    invoke-direct {p1, p0, v0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/internal/zzu;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms"

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    const/16 p1, 0x1081

    iput p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    iput-boolean p2, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/common/internal/zzu;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/RemoteCall;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->checkArgument(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzu;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/common/Feature;

    iget-boolean v2, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    iget v3, p0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzu;-><init>(Lcom/google/android/gms/common/internal/zzu;[Lcom/google/android/gms/common/Feature;ZI)V

    return-object v0
.end method

.method public final continueSettlingToState(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/internal/zzu;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    iget-boolean p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    :cond_1
    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iput p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    iget-boolean p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object p1, p1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final doExecute(Lcom/google/android/gms/common/internal/GmsClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/zzu;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/RemoteCall;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/RemoteCall;->accept(Lcom/google/android/gms/common/internal/GmsClient;Ljava/lang/Object;)V

    return-void
.end method
