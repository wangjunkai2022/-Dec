.class public final synthetic Lcom/apk/s2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/manhua/data/bean/ComicBean;


# direct methods
.method public synthetic constructor <init>(Lcom/manhua/data/bean/ComicBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/s2;->do:Lcom/manhua/data/bean/ComicBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/s2;->do:Lcom/manhua/data/bean/ComicBean;

    invoke-static {v0}, Lcom/apk/g3;->do(Lcom/manhua/data/bean/ComicBean;)V

    return-void
.end method
