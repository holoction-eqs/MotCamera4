.class public final Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHANGE_CALLBACK_TRACE:Ljava/lang/String; = "MultiVisibilitySubject.onVisibilityChange()"


# instance fields
.field public final mainThreadHandler:Landroid/os/Handler;

.field public final visibilityChangeListener:Ljava/lang/ref/WeakReference;

.field public final visibilityNotifierListeners:Ljava/util/ArrayList;

.field public final visibilityNotifierTypes:Ljava/util/List;

.field public final visibleIndexes:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/ref/WeakReference;)V
    .locals 7

    const-string v0, "visibilityNotifierTypes"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierTypes:Ljava/util/List;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityChangeListener:Ljava/lang/ref/WeakReference;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->mainThreadHandler:Landroid/os/Handler;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/LinkedHashSet;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_0

    check-cast v2, Lcom/motorola/camera/Notifier$TYPE;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;II)V

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v1, v6}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;II)V

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final registerListeners(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierListeners:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierTypes:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/Notifier$Listener;

    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_0

    :cond_0
    return-void
.end method
