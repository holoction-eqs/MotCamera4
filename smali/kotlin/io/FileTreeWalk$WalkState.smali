.class public abstract Lkotlin/io/FileTreeWalk$WalkState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final root:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/FileTreeWalk$WalkState;->root:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abstract step()Ljava/io/File;
.end method
