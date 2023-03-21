.class public final synthetic Lcom/apk/a7;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/a7;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/a7;->do:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->finish()V

    return-void
.end method
