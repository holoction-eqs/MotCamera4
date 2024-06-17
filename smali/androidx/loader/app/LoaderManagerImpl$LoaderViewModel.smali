.class public final Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# static fields
.field public static final FACTORY:Lkotlin/UByte$Companion;


# instance fields
.field public final mLoaders:Landroidx/collection/SparseArrayCompat;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/UByte$Companion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/UByte$Companion;-><init>(I)V

    sput-object v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Lkotlin/UByte$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 5

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_0

    aput-object v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object p0, p0, v2

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v1
.end method
