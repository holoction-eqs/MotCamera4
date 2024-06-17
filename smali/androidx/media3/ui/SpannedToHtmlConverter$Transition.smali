.class public final Landroidx/media3/ui/SpannedToHtmlConverter$Transition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final spansAdded:Ljava/util/ArrayList;

.field public final spansRemoved:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/ArrayList;

    return-void
.end method
