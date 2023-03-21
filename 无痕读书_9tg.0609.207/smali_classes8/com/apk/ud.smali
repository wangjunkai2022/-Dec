.class public final synthetic Lcom/apk/ud;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

.field public final synthetic if:Lcom/apk/g1;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;Lcom/apk/g1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ud;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    iput-object p2, p0, Lcom/apk/ud;->if:Lcom/apk/g1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/ud;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    iget-object v1, p0, Lcom/apk/ud;->if:Lcom/apk/g1;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->synchronized(Lcom/apk/g1;)V

    return-void
.end method
