.class public final synthetic Lcom/apk/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/app/AppContext;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/app/AppContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/m;->do:Lcom/biquge/ebook/app/app/AppContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/m;->do:Lcom/biquge/ebook/app/app/AppContext;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/app/AppContext;->if()V

    return-void
.end method
