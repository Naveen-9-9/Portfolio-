'use client';

import { useEffect } from 'react';
import ScrollExpandMedia from '@/components/ui/scroll-expansion-hero';

const currentMedia = {
  src: 'https://images.unsplash.com/photo-1726066012698-bb7a3abce786?q=80&w=1280&auto=format&fit=crop',
  background: 'https://images.unsplash.com/photo-1654618977232-a6c6dea9d1e8?q=80&w=1920&auto=format&fit=crop',
  title: 'Bist Naveen Singh',
  date: 'Full-Stack Software Engineer',
  scrollToExpand: 'Scroll down to expand profile',
  about: {
    overview:
      'I am a Full-Stack Software Engineer specializing in building premium, high-performance web applications and hardware-software IoT integrations. My design philosophy balances clean software architecture with sleek visual aesthetics.',
    conclusion:
      'With deep expertise in React, Next.js, TypeScript, and systems engineering, I craft responsive digital interfaces and robust backend architectures designed to scale seamlessly.',
  },
};

const MediaContent = () => {
  return (
    <div className='max-w-4xl mx-auto px-4 py-8 text-white'>
      <h2 className='text-3xl font-bold mb-6 border-b border-white/10 pb-4 tracking-tight'>
        About My Work
      </h2>
      <p className='text-lg leading-relaxed mb-8 text-neutral-300 font-light'>
        {currentMedia.about.overview}
      </p>

      <p className='text-lg leading-relaxed mb-8 text-neutral-300 font-light'>
        {currentMedia.about.conclusion}
      </p>
    </div>
  );
};

const Demo = () => {
  useEffect(() => {
    window.scrollTo(0, 0);

    const resetEvent = new Event('resetSection');
    window.dispatchEvent(resetEvent);
  }, []);

  return (
    <div className='min-h-screen bg-black select-none font-sans antialiased text-white'>
      <ScrollExpandMedia
        mediaSrc={currentMedia.src}
        bgImageSrc={currentMedia.background}
        title={currentMedia.title}
        date={currentMedia.date}
        scrollToExpand={currentMedia.scrollToExpand}
      >
        <MediaContent />
      </ScrollExpandMedia>
    </div>
  );
};

export default Demo;
