.class public final Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# instance fields
.field public final connectTimeoutMs:I

.field public final defaultRequestProperties:Lcom/google/android/gms/common/api/internal/zaad;

.field public final readTimeoutMs:I

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaad;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zaad;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/gms/common/api/internal/zaad;

    const/16 v0, 0x1f40

    iput v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    iput v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    return-void
.end method


# virtual methods
.method public final createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 4

    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    iget-object v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/gms/common/api/internal/zaad;

    iget p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    invoke-direct {v0, v1, p0, v2, v3}, Landroidx/media3/datasource/DefaultHttpDataSource;-><init>(Ljava/lang/String;IILcom/google/android/gms/common/api/internal/zaad;)V

    return-object v0
.end method
