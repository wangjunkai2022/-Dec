.class public final synthetic Lcom/apk/ic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;

.field public final synthetic for:Landroid/app/Activity;

.field public final synthetic if:Lcom/manhua/data/bean/ComicCollectBean;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;Lcom/manhua/data/bean/ComicCollectBean;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ic;->do:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;

    iput-object p2, p0, Lcom/apk/ic;->if:Lcom/manhua/data/bean/ComicCollectBean;

    iput-object p3, p0, Lcom/apk/ic;->for:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/apk/ic;->do:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;

    iget-object v1, p0, Lcom/apk/ic;->if:Lcom/manhua/data/bean/ComicCollectBean;

    iget-object v2, p0, Lcom/apk/ic;->for:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1}, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->if(Lcom/manhua/data/bean/ComicCollectBean;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
