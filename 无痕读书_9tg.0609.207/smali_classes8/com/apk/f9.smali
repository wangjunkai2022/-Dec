.class public final synthetic Lcom/apk/f9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

.field public final synthetic if:Lcom/biquge/ebook/app/bean/ChapterBean;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;Lcom/biquge/ebook/app/bean/ChapterBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/f9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iput-object p2, p0, Lcom/apk/f9;->if:Lcom/biquge/ebook/app/bean/ChapterBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/f9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object v1, p0, Lcom/apk/f9;->if:Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->switch(Lcom/biquge/ebook/app/bean/ChapterBean;)V

    return-void
.end method
