.class public Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$new;
.super Ljava/lang/Object;
.source "BookShelfFragment.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->r(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$new;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$new;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$new;->if:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$new;->do:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->n(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Ljava/util/List;)V

    return-void
.end method
