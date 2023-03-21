.class public Lorg/junit/internal/RealSystem;
.super Ljava/lang/Object;
.source "RealSystem.java"

# interfaces
.implements Lorg/junit/internal/JUnitSystem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public out()Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-object v0
.end method
