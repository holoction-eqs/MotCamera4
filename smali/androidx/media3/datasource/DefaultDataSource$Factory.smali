.class public final Landroidx/media3/datasource/DefaultDataSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# instance fields
.field public final baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->context:Landroid/content/Context;

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public final createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 2

    new-instance v0, Landroidx/media3/datasource/DefaultDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource;)V

    return-object v0
.end method
