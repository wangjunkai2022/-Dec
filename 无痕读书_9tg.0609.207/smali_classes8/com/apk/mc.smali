.class public final synthetic Lcom/apk/mc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/mc;->do:Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/mc;->do:Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->if()V

    return-void
.end method
