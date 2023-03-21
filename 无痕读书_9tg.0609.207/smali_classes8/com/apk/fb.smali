.class public Lcom/apk/fb;
.super Ljava/lang/Object;
.source "BookShelfFragment.java"

# interfaces
.implements Lcom/apk/ft;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

.field public final synthetic if:Lcom/biquge/ebook/app/bean/CollectBook;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Ljava/lang/String;Lcom/biquge/ebook/app/bean/CollectBook;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/fb;->for:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iput-object p2, p0, Lcom/apk/fb;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/fb;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/fb;->for:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {v1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    iget-object v1, p0, Lcom/apk/fb;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/fb;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apk/o0;->new(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
